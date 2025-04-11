$images = @{
    # Hero backgrounds
    "hero-bg.jpg" = "https://www.horsefarmtours.com/images/hero-bg.jpg"
    "tours-hero.jpg" = "https://www.horsefarmtours.com/images/tours-hero.jpg"
    "gallery-hero.jpg" = "https://www.horsefarmtours.com/images/gallery-hero.jpg"
    "book-hero.jpg" = "https://www.horsefarmtours.com/images/book-hero.jpg"
    "contact-hero.jpg" = "https://www.horsefarmtours.com/images/contact-hero.jpg"
    "reviews-hero.jpg" = "https://www.horsefarmtours.com/images/reviews-hero.jpg"
    
    # Tour images
    "tour1.jpg" = "https://www.horsefarmtours.com/images/tour1.jpg"
    "tour2.jpg" = "https://www.horsefarmtours.com/images/tour2.jpg"
    "tour3.jpg" = "https://www.horsefarmtours.com/images/tour3.jpg"
    
    # Guide photos
    "guide1.jpg" = "https://www.horsefarmtours.com/images/guide1.jpg"
    "guide2.jpg" = "https://www.horsefarmtours.com/images/guide2.jpg"
    "guide3.jpg" = "https://www.horsefarmtours.com/images/guide3.jpg"
    
    # Gallery images
    "gallery1.jpg" = "https://www.horsefarmtours.com/images/gallery1.jpg"
    "gallery2.jpg" = "https://www.horsefarmtours.com/images/gallery2.jpg"
    "gallery3.jpg" = "https://www.horsefarmtours.com/images/gallery3.jpg"
    "gallery4.jpg" = "https://www.horsefarmtours.com/images/gallery4.jpg"
    "gallery5.jpg" = "https://www.horsefarmtours.com/images/gallery5.jpg"
    "gallery6.jpg" = "https://www.horsefarmtours.com/images/gallery6.jpg"
    
    # Lexington attractions
    "keeneland.jpg" = "https://www.horsefarmtours.com/images/keeneland.jpg"
    "kentucky-horse-park.jpg" = "https://www.horsefarmtours.com/images/kentucky-horse-park.jpg"
    "red-mile.jpg" = "https://www.horsefarmtours.com/images/red-mile.jpg"
    
    # Reviewer photos
    "reviewer1.jpg" = "https://www.horsefarmtours.com/images/reviewer1.jpg"
    "reviewer2.jpg" = "https://www.horsefarmtours.com/images/reviewer2.jpg"
    "reviewer3.jpg" = "https://www.horsefarmtours.com/images/reviewer3.jpg"
    "reviewer4.jpg" = "https://www.horsefarmtours.com/images/reviewer4.jpg"
}

foreach ($image in $images.GetEnumerator()) {
    $url = $image.Value
    $output = "images/$($image.Key)"
    Write-Host "Downloading $($image.Key)..."
    try {
        $webClient = New-Object System.Net.WebClient
        $webClient.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36")
        $webClient.DownloadFile($url, $output)
        Write-Host "Successfully downloaded $($image.Key)"
    }
    catch {
        Write-Host "Error downloading $($image.Key): $_"
    }
} 