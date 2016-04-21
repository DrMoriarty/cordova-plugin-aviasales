function AviaSales() {
}

AviaSales.prototype.setApiInfo = function(marker, token, successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "AviaSales", "setApiInfo", [marker, token]);
};

AviaSales.prototype.SearchForm = function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "AviaSales", "SearchForm", []);
};

module.exports = new AviaSales();
