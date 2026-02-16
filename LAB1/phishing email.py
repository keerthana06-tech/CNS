def detect_phishing(email_content):
    phishing_keywords=['win','free','urgent','click','claim','password']
    found_keywords=[word for word in phishing_keywords if word in email_content.lower()]
    if found_keywords:
        return f"potential phishing detected! keywords found: {found_keywords}"
    else:
        return "email seems safe"
    
email="click here to win a free iPhone by updating your password!"
print(detect_phishing(email))