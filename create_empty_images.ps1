# Создаем пустые файлы изображений
$images = @(
    "gallery-hero.jpg",
    "keeneland.jpg",
    "kentucky-horse-park.jpg",
    "red-mile.jpg",
    "reviewer1.jpg",
    "reviewer2.jpg",
    "reviewer3.jpg",
    "reviewer4.jpg",
    "reviews-hero.jpg",
    "book-hero.jpg"
)

foreach ($image in $images) {
    $output = "images/$image"
    Write-Host "Создание $image..."
    New-Item -ItemType File -Path $output -Force
} 