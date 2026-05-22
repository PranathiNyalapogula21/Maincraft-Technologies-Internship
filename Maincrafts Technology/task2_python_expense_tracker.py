import csv

def add_expense():

    description = input("Enter expense description: ")

    amount = input("Enter amount: ")

    with open("expenses.csv", "a", newline="") as file:

        writer = csv.writer(file)

        writer.writerow([description, amount])

    print("Expense added successfully!")

def view_expenses():

    try:

        with open("expenses.csv", "r") as file:

            reader = csv.reader(file)

            print("\nExpenses List:\n")

            for row in reader:

                print(f"Item: {row[0]} | Amount: ₹{row[1]}")

    except FileNotFoundError:

        print("No expenses found.")    

def total_expenses():

    total = 0

    try:

        with open("expenses.csv", "r") as file:

            reader = csv.reader(file)

            for row in reader:

                total += int(row[1])

        print(f"\nTotal Expenses: ₹{total}")

    except FileNotFoundError:

        print("No expense file found.")        

while True:

    print("\n===== Expense Tracker =====")

    print("1. Add Expense")

    print("2. View Expenses")

    print("3. View Total Expenses")

    print("4. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":

        add_expense()

    elif choice == "2":

        view_expenses()

    elif choice == "3":

        total_expenses()

    elif choice == "4":

        print("Exiting program...")

        break

    else:

        print("Invalid choice. Try again.")        