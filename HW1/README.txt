My design choices about the conceptual Entity-Relational diagram:

1. A student needs to take classes and attends a project. All activities take place in rooms. Rooms may have tables. Al the rooms have their location and available time.

2. A class is taught one kind of course at a time and may uses different textbooks.

3. A project is conducted around a table with a storage box containing all the parts needed. Parts need to be ordered from suppliers and charged if they are damaged by students. I assumed one student can only attend one group. The group size is about 4 students. And one group can only choose one project. So, one group would only use one table and one storage box at one time.

4. A instructor can teach different classes and supervise different projects. He/She can get paid for doing the above. A instructor can specify diffetent textbooks for different classes.

5. Students need to rate instructors, classes and projects by instructors, classes and projects' id.

6. A student can borrow books from library. Borrowing books from the library leaves a record. A record would include student id, borrow date and return date. Borrow book number should not be over than 4 books at a time, which would be records in student entity.