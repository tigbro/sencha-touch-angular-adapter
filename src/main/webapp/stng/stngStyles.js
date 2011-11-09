define(['angular'], function() {
    /* Special styles for sencha-touch-angular-adapter */
    var styles =
        /* Set block display for spacer. Needed due to our custom tags */
        ".st-spacer {display: block} " +
            /* Set ng-validation-error to override other border declarations for fields */
            ".ng-validation-error {border: 2px solid red !important}";
    angular.element(document).find('head').append('<style type=\"text/css\">' + styles + '</style>');
});