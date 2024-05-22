import 'package:facilitator/features/auth/presentation/screens/facilitator_profile_screen.dart';
import 'package:facilitator/features/auth/presentation/screens/login_signup_screen.dart';
import 'package:facilitator/features/auth/presentation/screens/splash_screen.dart';
import 'package:facilitator/features/content/presentation/screens/content_info.dart';
import 'package:facilitator/features/content/presentation/screens/my_content_screen.dart';
import 'package:facilitator/features/content/presentation/screens/promote_content_screen.dart';
import 'package:facilitator/features/content_analysis/presentation/screens/content_analysis.dart';
import 'package:facilitator/features/customer_support/presentation/screens/customer_support.dart';
import 'package:facilitator/features/facilitator_channel/presentation/screens/create_channel_manually.dart';
import 'package:facilitator/features/facilitator_channel/presentation/screens/create_facilitator_channel.dart';
import 'package:facilitator/features/facilitator_channel/presentation/screens/facilitator_channel.dart';
import 'package:facilitator/features/facilitator_channel/presentation/screens/select_channel_category.dart';
import 'package:facilitator/features/home/presentation/screens/channel_overview_screen.dart';
import 'package:facilitator/features/home/presentation/screens/home_screen.dart';
import 'package:facilitator/features/home/presentation/screens/welcome_screen.dart';
import 'package:facilitator/features/payment_method/presentation/screens/pay_with_card_screen.dart';
import 'package:facilitator/features/payment_method/presentation/screens/payment_method_screen.dart';
import 'package:facilitator/features/payment_method/presentation/screens/payment_successful_or_failure_screen.dart';
import 'package:facilitator/features/request_money/presentation/screens/request_amount.dart';
import 'package:facilitator/features/request_money/presentation/screens/select_recipient.dart';
import 'package:facilitator/features/request_money/presentation/screens/wallet_request.dart';
import 'package:facilitator/features/send_money/presentation/screens/amount_and_remark.dart';
import 'package:facilitator/features/send_money/presentation/screens/select_bank.dart';
import 'package:facilitator/features/send_money/presentation/screens/send_money_to_bank.dart';
import 'package:facilitator/features/send_money/presentation/screens/send_success_or_failure.dart';
import 'package:facilitator/features/wallet/presentation/screens/bank_details.dart';
import 'package:facilitator/features/wallet/presentation/screens/card_details.dart';
import 'package:facilitator/features/wallet/presentation/screens/fund_wallet.dart';
import 'package:facilitator/features/wallet/presentation/screens/fund_with_bank.dart';
import 'package:facilitator/features/wallet/presentation/screens/fund_with_card.dart';
import 'package:facilitator/features/wallet/presentation/screens/funding_success_or_failure_screen.dart';
import 'package:facilitator/features/wallet/presentation/screens/wallet.dart';
import 'package:facilitator/features/withdraw_from_wallet/presentation/screens/amount_to_withdraw.dart';
import 'package:facilitator/features/withdraw_from_wallet/presentation/screens/select_bank_to_withdraw_from.dart';
import 'package:facilitator/features/withdraw_from_wallet/presentation/screens/withdraw_from_wallet.dart';
import 'package:facilitator/features/withdraw_from_wallet/presentation/screens/withdrawal_success_or_failure.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/error_screen.dart';
import '../../features/auth/presentation/screens/forgot_password.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';
import '../../features/auth/presentation/screens/reset_password.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';
import '../../features/auth/presentation/screens/verification_successful.dart';
import 'routes.dart';

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
      default:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
        );
    }
  }
}
