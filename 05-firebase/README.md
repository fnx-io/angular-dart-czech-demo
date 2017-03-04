# Firebase a Angular2 Dart

Tento příklad vzniknul pro potřeby AimtecHackathon 2017.
 
Ukazuje:
 
 - použití knihovny komponent fnx_ui
 - real-time načítání dat z Firebase 
 
## fnx_ui

Oficiální material design komponenty nejsou zatím kompletní, tak jsme si v fnx.io
vytvořili komponenty vlastní. Není to zatím package na pub.dartlang.org
ale v pubspec.yaml alespoň vidíte, jak přidat závilost na knihovně pomocí odkazu na
její GIT repozitář.

fnx_ui najdete [na githubu](https://github.com/fnx-io/fnx_ui)

Poměrně rozsáhlý katalog příkladů a kuchařku různých "UI situací" najdete na
[http://demo.fnx.io/fnx_ui/ng2/](http://demo.fnx.io/fnx_ui/ng2/).

Pokud by se vám zdálo, že jste nenašli to co hledáte, je možné, že toho
lze docílit jen pomocí [CSS frameworku](http://demo.fnx.io/fnx_ui/css/).

No a vždy se můžete zeptat (tomucha@gmail.com) nebo založit [issue](https://github.com/fnx-io/fnx_ui/issues).

## Firebase

V příkladu jsem nechal nakonfigurovanou vlastní instanci Firebase, pro provoz
si pochopitelně budeme muset [zaregistrovat vlastní](https://console.firebase.google.com/).