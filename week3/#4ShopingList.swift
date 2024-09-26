//
//  #4ShopingList.swift
//  week3
//
//  Created by Aisha Suanbekova Bakytjankyzy on 26.09.2024.
//

import Foundation

//Problem 4. Shop List

var shopList: [String] = []

func displayMenu() {
    print("""
    \nShopping List Manager
    1. Add an item
    2. Remove an item
    3. View the list
    4. Exit
    """)
}

func addItem() {
    print("Enter the item to add:")
    if let newItem = readLine() {
        shopList.append(newItem)
        print("\(newItem) has been added to your list.")
    }
}

func removeItem() {
    print("Enter the item to remove:")
    if let itemToRemove = readLine(), let index = shopList.firstIndex(of: itemToRemove) {
        shopList.remove(at: index)
        print("\(itemToRemove) has been removed from your list.")
    } else {
        print("Item not found in the list.")
    }
}

func viewList() {
    if shopList.isEmpty {
        print("Your shopping list is empty.")
    } else {
        print("Your Shopping List:")
        for (index, item) in shopList.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}

func shoppingListManager() {
    var shouldExit = false
    while !shouldExit {
        displayMenu()
        if let choice = readLine() {
            switch choice {
            case "1":
                addItem()
            case "2":
                removeItem()
            case "3":
                viewList()
            case "4":
                shouldExit = true
                print("Exiting the application. Goodbye!")
            default:
                print("Invalid option. Please choose again.")
            }
        }
    }
}

shoppingListManager()
