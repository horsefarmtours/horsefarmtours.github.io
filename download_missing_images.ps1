# Создаем директорию для изображений, если её нет
if (-not (Test-Path -Path "images")) {
    New-Item -ItemType Directory -Path "images"
}

# Загружаем недостающие изображения
$images = @(
    @{url="https://horsefarmtours.com/images/gallery-hero.jpg"; filename="gallery-hero.jpg"},
    @{url="https://horsefarmtours.com/images/keeneland.jpg"; filename="keeneland.jpg"},
    @{url="https://horsefarmtours.com/images/kentucky-horse-park.jpg"; filename="kentucky-horse-park.jpg"},
    @{url="https://horsefarmtours.com/images/red-mile.jpg"; filename="red-mile.jpg"},
    @{url="https://horsefarmtours.com/images/reviewer1.jpg"; filename="reviewer1.jpg"},
    @{url="https://horsefarmtours.com/images/reviewer2.jpg"; filename="reviewer2.jpg"},
    @{url="https://horsefarmtours.com/images/reviewer3.jpg"; filename="reviewer3.jpg"},
    @{url="https://horsefarmtours.com/images/reviewer4.jpg"; filename="reviewer4.jpg"},
    @{url="https://horsefarmtours.com/images/reviews-hero.jpg"; filename="reviews-hero.jpg"},
    @{url="https://horsefarmtours.com/images/book-hero.jpg"; filename="book-hero.jpg"}
)

foreach ($image in $images) {
    $output = "images/$($image.filename)"
    Write-Host "Загрузка $($image.filename)..."
    Invoke-WebRequest -Uri $image.url -OutFile $output
} 