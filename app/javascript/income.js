$(function () {
	$.extend($.fn.DataTable.defaults, {
		searching: true,
		ordering: true,
		deferRender: true,
		lengthMenu: [10, 25, 50, 100],
		serverSide: true,
		initComplete: function () {
			$('.filters input, .filters select', this).on('change', function (e) {
				var th = $(e.target).closest('th');
				this.api().column(th.index()).search($(e.target).val()).draw();
			});
		}

	});
});

$('#income-datatable').dataTable({
	"processing": true,
	"serverSide": true,
	"ajax": {
		"url": $('#income-datatable').data('source')
	},
	"pagingType": "full_numbers",
	"columns": [
		{ "data": "id" },
		{ "data": "name" },
		{ "data": "age" },
		{ "data": "city" },
		{ "data": "gender" }
	]
});