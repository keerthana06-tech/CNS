def detect_shoulder_surfing(distance_form_screen):
    if distance_form_screen<1:
        return "shoulder surfing detected! be cautions"
    else:
        return "no shoulder surfing detected"
    
distance=0.5
print(detect_shoulder_surfing(distance))