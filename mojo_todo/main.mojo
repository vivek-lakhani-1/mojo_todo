import todo
import storage
import utils

fn main():
    print("\n📝 Mojo To-Do List Manager\n")
    while True:
        print("\nOptions:")
        print("1. Add Task")
        print("2. List Tasks")
        print("3. Mark Task as Done")
        print("4. Remove Task")
        print("5. Exit")

        let choice = utils.get_input("Choose an option (1-5): ").strip()
        
        if choice == "1":
            let task = utils.get_input("Enter task description: ")
            todo.add_task(task)
        elif choice == "2":
            todo.list_tasks()
        elif choice == "3":
            let task_num = utils.get_input("Enter task number to mark as done: ").strip()
            todo.mark_done(task_num)
        elif choice == "4":
            let task_num = utils.get_input("Enter task number to remove: ").strip()
            todo.remove_task(task_num)
        elif choice == "5":
            print("\n👋 Exiting Mojo To-Do List. See you soon!\n")
            break
        else:
            print("❌ Invalid option. Please try again.")

main()
