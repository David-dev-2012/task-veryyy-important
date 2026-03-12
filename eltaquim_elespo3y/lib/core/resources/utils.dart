import 'package:eltaquim_elespo3y/core/resources/image_manager.dart';
import '../../model/on_boarding_model.dart';
import '../../view/on_boarding_page/on_boarding_screens/onboarding_widgets.dart';

class Utils {
  Utils._();

  static   List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: ImageManager.car,
      title: onboardingTitle1,
      subtitle: Utils.onboardingSubTitle1,
    ),
    OnboardingModel(
      image: ImageManager.safina,
      title: onboardingTitle2,
      subtitle: Utils.onboardingSubTitle2,
    ),
    OnboardingModel(
      image: ImageManager.map,
      title: onboardingTitle3,
      subtitle: Utils.onboardingSubTitle3,
    ),
  ];

  static List<OnBoardingScreenPageView> onBoardingPageViewList=[
    OnBoardingScreenPageView(image: ImageManager.car , title: onboardingTitle1, subtitle: onboardingSubTitle1),
    OnBoardingScreenPageView(image: ImageManager.safina , title: onboardingTitle2, subtitle: onboardingSubTitle2),
    OnBoardingScreenPageView(image: ImageManager.map , title: onboardingTitle3, subtitle: onboardingSubTitle3),
  ];

  static const String appTitle = "AirSprint";
  static const String onboardingTitle1 = "Ship Your Parcel";
  static const String onboardingTitle2 = "Ship International";
  static const String onboardingTitle3 = "Track Your Parcel";
  static const String onboardingSubTitle1 =
      "Experience smooth and completely stress-free shipping of your parcel";
  static const String onboardingSubTitle2 =
      "Ship your parcel internationally with our reliable shipping service";
  static const String onboardingSubTitle3 =
      "Stay informed about the parcel and get the real-time location";

  static const String skip = "skip";
  static const String next = "Continue";
}
