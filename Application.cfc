component {
	this.name = "luceeDocumentationBuilder-" & Hash( GetCurrentTemplatePath() );

	this.cwd = GetDirectoryFromPath( GetCurrentTemplatePath() )

	this.mappings[ "/api"      ] = this.cwd & "api";
	this.mappings[ "/builders" ] = this.cwd & "builders";
	this.mappings[ "/docs"     ] = this.cwd & "docs";
	this.mappings[ "/import"   ] = this.cwd & "import";
	this.mappings[ "/builds"   ] = this.cwd & "builds";

	public boolean function onRequest( required string requestedTemplate ) output=true {

		include template=arguments.requestedTemplate;

		return true;
	}
}