<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>bt html 3</title>
    <meta charset="utf-8">
    <style>
        .first-table {
            width: 50%;
            border: 1px solid;
            font-size: 19px;
        }

        th,
        td {
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            color: #000;
        }
        .last-table{
            width: 40%;
        }
        .last-table th,td{
            font-size: 12px;
        }
    </style>
</head>

<body>
    <table class="first-table">

        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Points</th>
        </tr>

        <tr>
            <td>Jill</td>
            <td>Smith</td>
            <td>50</td>
        </tr>
        <tr>
            <td>Eve</td>
            <td>Jackson</td>
            <td>94</td>
        </tr>
        <tr>

            <td>Adam</td>
            <td>Johnson</td>
            <td>67</td>

        </tr>
        
            
    </table> <br>

    <table class="last-table">

        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Points</th>
        </tr>

        <tr>
            <td>Jill</td>
            <td>Smith</td>
            <td>50</td>
        </tr>
        <tr>
            <td>Eve</td>
            <td>Jackson</td>
            <td>94</td>
        </tr>
        <tr>

            <td>Adam</td>
            <td>Johnson</td>
            <td>67</td>

        </tr>
        
            
    </table>
</body>
</html>