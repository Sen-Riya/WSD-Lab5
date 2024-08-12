<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:cs="http://www.example.com/course">

    <xsl:output method="html" indent="yes"/>

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Course Listings</title>
                <style>
                    html, body {
                        height: 100%;
                        margin: 0;
                    }

                    body {
                        display: flex;
                        flex-direction: column;
                    }

                    .container {
                        flex: 1;
                    }

                    header, footer {
                        background-color: #333;
                        color: white;
                        padding: 10px 0;
                        text-align: center;
                    }

                    header h1, footer p {
                        margin: 0;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                    }

                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }

                    th {
                        background-color: #f2f2f2;
                    }

                    .enroll-button {
                        display: inline-block;
                        padding: 10px 20px;
                        margin: 5px;
                        color: white;
                        background-color: #007bff;
                        text-decoration: none;
                        border-radius: 5px;
                        text-align: center;
                    }

                    .enroll-button:hover {
                        background-color: #0056b3;
                    }
                </style>
            </head>
            <body>
                <header>
                    <h1>Online Learning Platform</h1>
                </header>

                <div class="container">
                    <h2>Course Listings</h2>
                    <table>
                        <tr>
                            <th>Title</th>
                            <th>Instructor</th>
                            <th>Duration (hours)</th>
                            <th>Availability</th>
                            <th>Action</th>
                        </tr>
                        <xsl:for-each select="cs:courses/cs:course">
                            <tr>
                                <td><xsl:value-of select="cs:title"/></td>
                                <td><xsl:value-of select="cs:instructor"/></td>
                                <td><xsl:value-of select="cs:duration"/></td>
                                <td><xsl:value-of select="cs:availability"/></td>
                                <td>
                                    <a href="enroll.html?course={cs:title}" class="enroll-button">Enroll</a>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

                <footer>
                    <p>&#169; 2024 Online Learning Platform</p>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
