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
                        font-family: Arial, sans-serif;
                        background-color: #f9f9f9;
                        color: #333;
                    }

                    body {
                        display: flex;
                        flex-direction: column;
                    }

                    .container {
                        flex: 1;
                        padding: 20px;
                        background-color: #ffffff;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        margin: 20px;
                    }

                    header, footer {
                        background-color: #4CAF50;
                        color: white;
                        padding: 10px 0;
                        text-align: center;
                    }

                    header h1, footer p {
                        margin: 0;
                    }

                    h2 {
                        color: #4CAF50;
                        border-bottom: 2px solid #4CAF50;
                        padding-bottom: 10px;
                        margin-bottom: 20px;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                        background-color: #fdfdfd;
                    }

                    th, td {
                        border: 1px solid #ddd;
                        padding: 12px;
                        text-align: left;
                    }

                    th {
                        background-color: #4CAF50;
                        color: white;
                    }

                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }

                    tr:hover {
                        background-color: #f1f1f1;
                    }

                    .enroll-button {
                        display: inline-block;
                        padding: 10px 20px;
                        margin: 5px;
                        color: white;
                        background-color: #2196F3;
                        text-decoration: none;
                        border-radius: 5px;
                        text-align: center;
                        transition: background-color 0.3s ease;
                    }

                    .enroll-button:hover {
                        background-color: #1976D2;
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
