<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Task 3</title>
        <style>
            table,th,td {
                border: 2px solid black;
                text-align: center;
            }

            table {
                width: 30%;
            }
        </style>
    </head>

    <body>
        <h1> Hoverable Table</h1>
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th rowspan="2" colspan="2">Points</th>
            </tr>
            <tr>
                <td>Jill</td>
                <td>Smith</td>
            </tr>
            <tr>
                <td rowspan="2">Eve</td>
                <td rowspan="1">Jackson</td>

                <td rowspan="2" colspan="1">1</td>
                <td rowspan="2" colspan="1">2</td>

            </tr>
            <td>Adam</td>
        </table>
    </body>

    </html>