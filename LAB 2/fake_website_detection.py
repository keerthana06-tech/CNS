import hashlib
trusted_dns_records={
    "google.com":
    hashlib.sha256("google.com".encode()).hexdigest(),
    "amazon.com":
    hashlib.sha256("amazon.com".encode()).hexdigest(),
    "facebook.com":
    hashlib.sha256("facebook.com".encode()).hexdigest()
}
user_domain=input("enter website domain:")
if user_domain in trusted_dns_records:

    user_hash= hashlib.sha256(user_domain.encode()).hexdigest()

    if user_hash==trusted_dns_records[user_domain]:
        print("\nwebsite is authentic (not fake)")
        print("DNSSEC verification successful")
    else:
        print("\nwarning! website data is modified")
        print("DNSSEC verification failed")
else:
    print("\nfake website detected")
    print("domain not found in trusted DNS records")