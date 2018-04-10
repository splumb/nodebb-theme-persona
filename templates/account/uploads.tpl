<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row">
		<h1>{title}</h1>

        <!-- IF privateUploads -->
        <div class="alert alert-info text-center">[[uploads:private-uploads-info]]</div>
        <!-- ELSE -->
        <div class="alert alert-info text-center">[[uploads:public-uploads-info]]</div>
        <!-- ENDIF privateUploads -->

		<!-- IF !uploads.length -->
			<div class="alert alert-warning text-center">[[uploads:no-uploads-found]]</div>
		<!-- ENDIF !uploads.length -->

		<div class="col-xs-12">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <!-- BEGIN uploads -->
                    <tr data-url="{uploads.url}">
                        <td>
                            <a href="{config.relative_path}{uploads.url}">{uploads.url}</a>
                        </td>
                        <td>
                            <div class="btn-group ">
                                <button class="btn btn-danger btn-xs" data-action="delete"><i class="fa fa-trash"></i></button>
                            </div>
                        </td>
                    </tr>
                    <!-- END uploads -->
                </tbody>
            </table>

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>