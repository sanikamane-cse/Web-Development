<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
    <title>Student Result</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
            color: darkblue;
        }
        table {
            border-collapse: collapse;
            width: 60%;
            margin: auto;
            background-color: white;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: lightblue;
        }
    </style>

</head>

<body>

<h2>Student Result (Pass/Fail)</h2>

<table>
    <tr>
        <th>Name</th>
        <th>Roll No</th>
        <th>Marks</th>
        <th>Result</th>
    </tr>

    <xsl:for-each select="students/student">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="rollno"/></td>
            <td><xsl:value-of select="marks"/></td>

            <td>
                <xsl:choose>
                    <xsl:when test="marks &gt;= 40">
                        Pass
                    </xsl:when>
                    <xsl:otherwise>
                        Fail
                    </xsl:otherwise>
                </xsl:choose>
            </td>

        </tr>
    </xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>