patients = [[70, 1.8], [80, 1.9], [150, 1.7]]

def calculate_bmi(weight, height):
    
    # add print statement for debugging
    print('weight:', weight, 'height:', height)
    
    return weight / (height ** 2)

    
for patient in patients:
    # weight, height = patients[0] # BUG!
    weight, height = patient
    # bmi = calculate_bmi(height, weight) # BUG!
    bmi = calculate_bmi(weight, height)
    
    # change print statement
    # print(f"Patient's BMI is {bmi:f}")
    print(f"Patient's BMI (weight: {weight}, height: {height} is: {bmi:f}")