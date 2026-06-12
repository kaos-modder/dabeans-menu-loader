declare const Il2Cpp: any;
declare const console: any;

Il2Cpp.perform(() => {
    try {
        const AppUtils = Il2Cpp
            .domain
            .assembly("AnimalCompany")
            .image
            .class("AnimalCompany.AppUtils");

        const method = AppUtils.method("CalculatePhotonAppVersion");

        console.log("dabeans menu loaded");

        method.implementation = function () {
            const spoofed = "CasFhlWh92CT7TA8IF4x";

            console.log(
                `join kaos laoder discord if you arnt already`
            );

            return Il2Cpp.string(spoofed);
        };
    } catch (e) {
        console.error("[m4] CalculatePhotonAppVersion hook failed:", e);
    }
});