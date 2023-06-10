import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // TODO: Add your Google Maps API key
    GMSServices.provideAPIKey("AIzaSyAPou7ZnF1Z_x4p2Kp4_GiTGHD7oPW9gbs")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
