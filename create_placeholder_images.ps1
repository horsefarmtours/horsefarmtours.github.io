# Создаем изображения-заглушки
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
    # Создаем пустое изображение размером 800x600 пикселей
    $width = 800
    $height = 600
    $bitmap = New-Object System.Drawing.Bitmap($width, $height)
    $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
    $graphics.Clear([System.Drawing.Color]::White)
    $font = New-Object System.Drawing.Font("Arial", 24)
    $brush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::Black)
    $graphics.DrawString($image, $font, $brush, 10, 10)
    $bitmap.Save($output)
    $graphics.Dispose()
    $bitmap.Dispose()
} 