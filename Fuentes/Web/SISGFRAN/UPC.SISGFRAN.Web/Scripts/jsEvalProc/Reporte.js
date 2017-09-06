$(function () {
    $.ajaxSetup({ cache: false });
    $("a[data-modal]").on("click", function (e) {
        $('#myModalContent').load(this.href, function () {
            $('#myModal').modal({
                keyboard: false,
                backdrop: 'static'
            }, 'show');
            bindForm(this);
        });
        return false;
    });
});

function bindForm(dialog) {
    $('form', dialog).submit(function () {
        $.ajax({
            url: this.action,
            type: this.method,
            data: $(this).serialize(),
            success: function (result) {
                if (result.status != undefined) {
                    if (!result.status) {
                        bootbox.alert({
                            message: result.message,
                            size: 'small'
                        });
                    }
                }
                else {
                    $('#myModal').modal('hide');
                }
            }
        });
        return false;
    });
}