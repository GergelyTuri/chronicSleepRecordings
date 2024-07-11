# Prompts user to set input folder containing .webm videos
$inputFolder = (Read-Host -Prompt 'Input folder path containing .webm files')

# Selects only '.webm' files within the input folder
$files = Get-ChildItem -Path $inputFolder -Filter *.webm

# Load Shell.Application COM object for accessing file properties
$shell = New-Object -ComObject Shell.Application

foreach ($file in $files) {
    # Create output folder named after each input file basename
    $base = $file.BaseName
    $outputFolder = Join-Path -Path $inputFolder -ChildPath $base
    New-Item -ItemType Directory -Path $outputFolder -Force | Out-Null

    # Get full file path
    $inputFile = $file.FullName
    
    # Get the folder containing the video file
    $folder = $shell.Namespace((Get-Item $inputFile).DirectoryName)

    # Get the video file itself from the folder
    $fileItem = $folder.ParseName((Get-Item $inputFile).Name)

    # Retrieve the duration property (in seconds) of the video file
    $videoDuration = $folder.GetDetailsOf($fileItem, 27)

    # Convert duration format (hh:mm:ss) to total seconds
    $videoDurationInSeconds = ([TimeSpan]$videoDuration).TotalSeconds

    # Initialize timestamp
    $timestamp = 0

    # Initialize videoCount
    $videoCount = 1
    
    # While the video timestamp is less than the duration of the video, export a 1hr long video ('.mp4' format) to the corresponding output folder
    while ($timestamp -lt $videoDurationInSeconds) {
        ffmpeg -i "$inputFile" -ss $timestamp -t 3600 "$outputFolder\${base}_${videoCount}.mp4"
        $timestamp = $timestamp + 3600
        $videoCount = $videoCount + 1
    }
}