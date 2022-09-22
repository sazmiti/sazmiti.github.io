<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
    <xsl:template match="/">
        <html>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>

            <body>
                <h2>Foaf Presentation</h2>
                <table class="table w-75 mx-auto">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Title</th>
                        <th>Given name</th>
                        <th>Family name</th>
                        <th>Nick</th>
                        <th>Mail</th>
                        <th>Page</th>
                        <th>Photo</th>
                        <th>Work page</th>
                        <th>Work info</th>
                        <th>School page</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:name"/></td>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:title"/></td>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:givenname"/></td>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:family_name"/></td>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:nick"/></td>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:mbox_sha1sum"/></td>
                            <td><a href="{rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource}"><xsl:value-of select="rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource"/></a></td>
                            <td><img src="{rdf:RDF/foaf:Person/foaf:depiction/@rdf:resource}"/></td>
                            <td><a href="{rdf:RDF/foaf:Person/foaf:workplaceHomepage/@rdf:resource}"><xsl:value-of select="rdf:RDF/foaf:Person/foaf:workplaceHomepage/@rdf:resource"/></a></td>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:workInfoHomepage/@rdf:resource"/></td>
                            <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:schoolHomepage/@rdf:resource"/></td>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>