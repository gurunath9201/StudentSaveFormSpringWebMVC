<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student Registration</title>

</head>

<body>

<h2 style="color:green;">
    ${message}
</h2>

<form action="/save" method="post">

    <table>

        <tr>
            <td>Name</td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>

        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email">
            </td>
        </tr>

        <tr>
            <td>Gender</td>
            <td>

                <input type="radio"
                       name="gender"
                       value="Male">

                Male

                <input type="radio"
                       name="gender"
                       value="Female">

                Female

            </td>
        </tr>

        <tr>
            <td>Course</td>
            <td>

                <select name="course">

                    <option value="Spring">
                        Spring
                    </option>

                    <option value="Java">
                        Java
                    </option>

                    <option value="React">
                        React
                    </option>

                    <option value="Angular">
                        Angular
                    </option>

                </select>

            </td>
        </tr>

        <tr>
            <td>Timings</td>

            <td>

                <input type="checkbox"
                       name="timings"
                       value="Morning">

                Morning

                <input type="checkbox"
                       name="timings"
                       value="Afternoon">

                Afternoon

                <input type="checkbox"
                       name="timings"
                       value="Evening">

                Evening

            </td>

        </tr>

        <tr>

            <td colspan="2">

                <input type="submit"
                       value="Submit">

            </td>

        </tr>

    </table>

</form>

<hr>

<h2>Students</h2>

<table border="1" cellpadding="8">

    <tr>

        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Course</th>
        <th>Timings</th>

    </tr>

    <c:forEach var="student" items="${students}">

        <tr>

            <td>${student.id}</td>

            <td>${student.name}</td>

            <td>${student.email}</td>

            <td>${student.gender}</td>

            <td>${student.course}</td>

            <td>${student.timings}</td>

        </tr>

    </c:forEach>

</table>

</body>

</html>