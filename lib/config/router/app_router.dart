import "package:facilitator/features/promote_content/presentation/screens/add_description_screen.dart";
import "package:facilitator/features/promote_content/presentation/screens/audience_screen.dart";
import "package:facilitator/features/promote_content/presentation/screens/duration_screen.dart";
import "package:facilitator/features/promote_content/presentation/screens/promote_content_manually_screen.dart";
import "package:flutter/material.dart";

import "../../router_exports.dart";
import "routes.dart";

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.welcomeScreen:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
      case Routes.loginSignupScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginSignupScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );

      case Routes.otpVerification:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );
      case Routes.verificationSuccessful:
        return MaterialPageRoute(
          builder: (_) => const VerificationSuccessfulScreen(),
        );

      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      case Routes.passwordChangeSuccessful:
        return MaterialPageRoute(
          builder: (_) => const PasswordChangeSuccessfulScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.homeScreenTwo:
        return MaterialPageRoute(
          builder: (_) => const ChannelOverviewScreen(),
        );
      case Routes.myContent:
        return MaterialPageRoute(
          builder: (_) => const MyContentScreen(),
        );

      case Routes.promoteContent:
        return MaterialPageRoute(
          builder: (_) => const PromoteContentScreen(),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => const FacilitatorProfileScreen(),
        );
      case Routes.myContentScreen:
        return MaterialPageRoute(
          builder: (_) => const MyContentScreen(),
        );
      case Routes.contentInfo:
        return MaterialPageRoute(
          builder: (_) => const ContentInfoScreen(),
        );
      case Routes.myWallet:
        return MaterialPageRoute(
          builder: (_) => const WalletScreen(),
        );
      case Routes.fundWallet:
        return MaterialPageRoute(
          builder: (_) => const FundWallet(),
        );
      case Routes.fundWithCard:
        return MaterialPageRoute(
          builder: (_) => const FundWithCardScreen(),
        );
      case Routes.cardDetails:
        return MaterialPageRoute(
          builder: (_) => const CardDetails(),
        );
      case Routes.fundWithBank:
        return MaterialPageRoute(
          builder: (_) => const FundWithBank(),
        );
      case Routes.bankDetails:
        return MaterialPageRoute(
          builder: (_) => const BankDetailsScreen(),
        );
      case Routes.withdrawFromWallet:
        return MaterialPageRoute(
          builder: (_) => const WithdrawFromWallet(),
        );
      case Routes.facilitatorChannel:
        return MaterialPageRoute(
          builder: (_) => const FacilitatorChannel(),
        );
      case Routes.createFacilitatorChannel:
        return MaterialPageRoute(
          builder: (_) => const CreateFacilitatorChannel(),
        );
      case Routes.customerSupport:
        return MaterialPageRoute(
          builder: (_) => const CustomerSupportScreen(),
        );
      case Routes.contentAnalysis:
        return MaterialPageRoute(
          builder: (_) => const ContentAnalysis(),
        );
      case Routes.fundingSuccessFailure:
        return MaterialPageRoute(
          builder: (_) => const FundingSuccessOrFailureScreen(),
        );
      case Routes.paymentMethod:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethodScreen(),
        );

      case Routes.payWithCard:
        return MaterialPageRoute(
          builder: (_) => const PaymentWithCardScreen(),
        );

      case Routes.paymentFailureOrSuccess:
        return MaterialPageRoute(
          builder: (_) => const PaymentFailureOrSuccessScreen(),
        );
      case Routes.sendMoneyToBank:
        return MaterialPageRoute(
          builder: (_) => const SendMoneyToBank(),
        );
      case Routes.selectBank:
        return MaterialPageRoute(
          builder: (_) => const SelectBank(),
        );
      case Routes.amountAndRemark:
        return MaterialPageRoute(
          builder: (_) => const AmountAndRemarkScreen(),
        );
      case Routes.sendSuccessOrFailure:
        return MaterialPageRoute(
          builder: (_) => const SendSuccessOrFailureScreen(),
        );
      case Routes.selectBankToWithdraw:
        return MaterialPageRoute(
          builder: (_) => const SelectBankToWithdraw(),
        );
      case Routes.amountToWithdraw:
        return MaterialPageRoute(
          builder: (_) => const AmountToWithdrawScreen(),
        );
      case Routes.withdrawalSuccessOrFailure:
        return MaterialPageRoute(
          builder: (_) => const WithdrawalSuccessOrFailureScreen(),
        );
      case Routes.requestMoney:
        return MaterialPageRoute(
          builder: (_) => const WalletRequest(),
        );
      case Routes.selectRecipient:
        return MaterialPageRoute(
          builder: (_) => const SelectRecipientScreen(),
        );
      case Routes.amountRequest:
        return MaterialPageRoute(
          builder: (_) => const AmountRequestScreen(),
        );
      case Routes.createChannelManually:
        return MaterialPageRoute(
          builder: (_) => const ChannelCreationScreen(),
        );
      case Routes.selectChannelCategory:
        return MaterialPageRoute(
          builder: (_) => const SelectChannelCategoryScreen(),
        );

      case Routes.userVerification:
        return MaterialPageRoute(
          builder: (_) => const UserVerificationScreen(),
        );
      case Routes.notifications:
        return MaterialPageRoute(
          builder: (_) => const NotificationScreen(),
        );
      case Routes.inProgress:
        return MaterialPageRoute(
          builder: (_) => const InProgressScreen(),
        );
      case Routes.channelManual:
        return MaterialPageRoute(
          builder: (_) => const MyChannelManual(),
        );
      case Routes.manualContentPromotion:
        return MaterialPageRoute(
          builder: (_) => const ManualContentPromotionScreen(),
        );
      case Routes.addDescription:
        return MaterialPageRoute(
          builder: (_) => const AddDescriptionScreen(),
        );
      case Routes.selectAudience:
        return MaterialPageRoute(
          builder: (_) => const AudienceScreen(),
        );
      case Routes.selectDuration:
        return MaterialPageRoute(
          builder: (_) => const DurationScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
