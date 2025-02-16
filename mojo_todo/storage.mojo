import config

fn save_task(task: String):
    let file = open(config.TASK_FILE, "a")
    file.write(task + "\n")
    file.close()

fn load_tasks() -> List[String]:
    let file = open(config.TASK_FILE, "r")
    let tasks = file.read_lines()
    file.close()
    return tasks

fn save_all_tasks(tasks: List[String]):
    let file = open(config.TASK_FILE, "w")
    for task in tasks:
        file.write(task + "\n")
    file.close()
