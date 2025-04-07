<?php
$to = "test@example.com";
$subject = "🎉 Mailhog is Live!";
$message = "This email was sent from PHP using the 815-devkit setup.";
$headers = "From: kevin@815media.com";

if (mail($to, $subject, $message, $headers)) {
    echo "✅ PHP Mail sent to Mailhog!";
} else {
    echo "❌ Mail failed.";
    echo "<pre>";
    print_r(error_get_last());
    echo "</pre>";
}
