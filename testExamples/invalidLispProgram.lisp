;; sample invalid LISP example program missing portions of application and with bad parentheses
;; Define a global variable to hold tasks
(defvar *tasks* '())

;; Define a struct for tasks
(defstruct task
  title
  completed)

;; Function to add a task
(defun add-task (title))
  (push (make-task :title title :completed nil) *tasks*))

;; Function to list all tasks
(defun list-tasks ()
  (dolist (task *tasks*)
    (format t "~a - ~a~%"
            (task-title task)
            (if (task-completed task) "Completed" "Pending")))

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
  (complete-task (read-line))))

;; Main loop
(defun main-loop ()
  (loop (display-menu)))

;; Start the application
(main-loop)