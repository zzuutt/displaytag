<jsp:root version="1.2" xmlns:jsp="http://java.sun.com/JSP/Page"
    xmlns:display="urn:jsptld:../../../src/main/resources/META-INF/displaytag-el.tld">
    <jsp:text> <![CDATA[<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> ]]> </jsp:text>
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
        <head>
            <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1" />
            <title>Displaytag unit test</title>
        </head>
        <body>
            <jsp:scriptlet> <![CDATA[
                java.util.List testData = new java.util.ArrayList();
                testData.add(new org.displaytag.test.KnownValue());
                testData.add(new org.displaytag.test.KnownValue());
                testData.add(new org.displaytag.test.KnownValue());
                request.setAttribute( "test", testData);
                request.setAttribute("test2", new org.displaytag.test.ShuffledNumberedList());
            ]]> </jsp:scriptlet>
            <display:table name="${requestScope.test}" id="table" sort="external" >
                <display:column property="ant" sortable="true"/>
                <display:column property="bee" sortable="true" sortName="buzz"/>
            </display:table>
            <display:table name="${requestScope.test2}" id="table2" sort="external">
                <display:column property="number" sortable="true" sortName="number"/>
            </display:table>
        </body>
    </html>
</jsp:root>