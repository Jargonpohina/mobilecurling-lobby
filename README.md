# mobilecurling_lobby

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

An example application built with dart_frog

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis


Running in GCloud here: https://lobby-ic4hp354na-ew.a.run.app

For update deployments:

```sh
 dart pub get
 dart_frog build
 gcloud run deploy lobby   --source build   --project=united-kiln-407618   --region=europe-west1   --allow-unauthenticated
```
