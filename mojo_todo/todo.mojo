import storage

fn add_task(task: String):
    let task_entry = f"[ ] {task}"
    storage.save_task(task_entry)
    print(f"✅ Task added: {task}")

fn list_tasks():
    let tasks = storage.load_tasks()
    if tasks.is_empty():
        print("📭 No tasks found.")
    else:
        print("\n📋 Your Tasks:\n")
        for i in range(tasks.size()):
            print(f"{i + 1}. {tasks[i]}")

fn mark_done(task_number: String):
    let num = Int(task_number) - 1
    var tasks = storage.load_tasks()
    
    if num >= 0 and num < tasks.size():
        if "[✔]" in tasks[num]:
            print("✅ Task already marked as done!")
        else:
            tasks[num] = tasks[num].replace("[ ]", "[✔]")
            storage.save_all_tasks(tasks)
            print("✅ Task marked as done!")
    else:
        print("❌ Invalid task number!")

fn remove_task(task_number: String):
    let num = Int(task_number) - 1
    var tasks = storage.load_tasks()
    
    if num >= 0 and num < tasks.size():
        let removed_task = tasks.pop(num)
        storage.save_all_tasks(tasks)
        print(f"🗑 Removed task: {removed_task}")
    else:
        print("❌ Invalid task number!")
