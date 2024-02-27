;; sample valid LISP example program found online to test application
;; Define a global variable to hold tasks
(defvar *tasks* '())

;; Define a struct for tasks
(defstruct task
  title
  completed)

;; Function to add a task
(defun add-task (title)
  (push (make-task :title title :completed nil) *tasks*))

;; Function to list all tasks
(defun list-tasks ()
  (dolist (task *tasks*)
    (format t "~a - ~a~%"
            (task-title task)
            (if (task-completed task) "Completed" "Pending"))))

;; Function to mark a task as completed
(defun complete-task (title)
  (let ((task (find title *tasks* :test #'string= :key #'task-title)))
    (when task
      (setf (task-completed task) t))))

;; UI Functions
(defun prompt-add-task ()
  (format t "Enter task title: ")
  (add-task (read-line)))

(defun prompt-complete-task ()
  (format t "Enter completed task title: ")
  (complete-task (read-line)))

(defun display-menu ()
  (format t "1. Add Task~%2. List Tasks~%3. Complete Task~%4. Exit~%")
  (format t "Choose an option: ")
  (case (read)
    (1 (prompt-add-task))
    (2 (list-tasks))
    (3 (prompt-complete-task))
    (4 (return-from display-menu))
    (otherwise (format t "Invalid option.~%"))))

;; Main loop
(defun main-loop ()
  (loop (display-menu)))

;; Start the application
(main-loop)