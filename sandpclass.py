import random


class Menu():
    def __init__(self):
        print("------------- Welcome to Steaks and Platters! -------------")
        print("----------------------Press 1 to play----------------------")
        print("----------------------Press 2 to quit----------------------")
        self.choice = input("                      Your selection:")
        print()


class My_Board():
    def __init__(self):
        self.board = []
        self.clean_slate()

    def clean_slate(self):
        for i in range(1, 101):
            self.board.append(str(i).zfill(2))

    def print_board(self):
        display_string = ""
        for i, value in enumerate(self.board, 1):
            if i % 20 == 0:
                display_string += value + "\n" * 2
            else:
                display_string += value + " "
        print(display_string)


class Dice():
    def __init__(self):
        self.pos = 0
        self.dice1 = random.randint(1, 6)
        self.dice2 = random.randint(1, 6)
        self.total = self.dice1 + self.dice2
        while True:
            if choose.choice == "1":
                print(f"Dice 1 rolled a: {self.dice1}")
                print(f"Dice 2 rolled a: {self.dice2}")
                print(f"You rolled a total of: {self.total}")
                print()
            break
        self.pos += self.total
        ybr.print_board()

    def turn(self):
        ybr.print_board()
        choice2 = ""
        if choice2 == "":
            input("Press Enter to roll again:")
            print("\n")
        elif choose.choice == "2":
            print("Goodbye!")
            exit()
        else:
            print("Invalid choice, try again...")
            print("\n")


class Replace():
    def __init__(self):
        self.new_total = str(userroll.total).zfill(2)
        self.board = []

    def move(self):
        if userroll.total >= 100:
            print("You Win!")
            exit()
        # if self.pos == 20 or 40 or 80 or 90:
        #     self.pos - 10
        # if self.pos == 15 or 30 or 45 or 60 or 75:
        #     self.pos + 10
        ybr.clean_slate()
        i = ybr.board.index(self.new_total)
        ybr.board[i] = "♫ "


print()
choose = Menu()

ybr = My_Board()

userroll = Dice()

replace = Replace()
