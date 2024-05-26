class Routes {
  //splash screen
  static const String splashScreen = '/';
  //welcome screen
  static const String welcomeScreen = '/welcomeScreen';

  //login sing up screen
  static const String loginSignupScreen = '/loginSignupScreen';

  //Auth
  // static const String landing = '/login';
  static const String login = '/login';
  static const String phoneNumber = '/phoneNumber';
  static const String otpVerification = '/otpVerification';
  static const String signUp = '/signUp';
  static const String verificationSuccessful = '/verificationSuccessful';
  static const String forgotPassword = '/forgotPassword';
  static const String passwordChangeSuccessful = '/passwordChangeSuccessful';

  static const String resetPassword = '/resetPasswords';

//User Verificatiom
  static const String userVerification = "/userVerification";
  static const String inProgress = "/inProgress";

  //Home
  static const String home = '/home';
  static const String homeScreenTwo = '/homeScreenTwo';

  //facilitator profile
  static const String facilitatorProfileScreen = '/facilitatorProfileScreen';
  static const String myContentScreen = '/MyContentScreen';
  static const String facilitatorChannel = '/facilitatorChannel';
  static const String createFacilitatorChannel = '/createFacilitatorChannel';
  static const String createChannelManually = '/createChannelManually';
  static const String selectChannelCategory = '/selectChannelCategory';
  static const String channelManual = '/channelManual';

  //Store
  static const String firstStoreCreation = '/firstStoreCreation';
  static const String storeCreationForm = '/storeCreationForm';
  static const String editStore = '/editStore';
  static const String aiCreateStore = '/aiCreateStore';
  static const String prompAlbert = '/promptAlbert';
  static const String myStores = '/myStores';
  static const String storePerformance = '/storePerformance';
  static const String stockSales = '/stockSales';
  static const String clicksViewsList = '/clicksViewsList';
  static const String rejectedSoldListScreen = '/rejectedSoldListScreen';

  //Products
  static const String addProduct = '/addProduct';
  static const String categoryItems = '/categoryItems';
  static const String editProduct = '/editProduct';

  //Services
  static const String createFirstService = '/createFirstService';
  static const String serviceCreationFormScreen = '/serviceCreationFormScreen';
  static const String serviceSummary = '/serviceSummary';
  static const String editServiceProfile = '/editServiceProfile';
  static const String addPackage = '/addPackage';
  static const String bookedService = '/bookedService';
  static const String bookedServicesDetails = '/bookedServicesDetails';
  static const String pendingServices = '/pendingServices';
  static const String pendingServicesDetials = '/pendingServicesDetials';
  static const String serviceQualityPerformanceScreen =
      '/serviceQualityPerformanceScreen';
  static const String updateAddress = '/updateAddress';

  static const String rejectedCompletedServiceDetailsScreen =
      '/rejectedCompletedServiceDetailsScreen';
  static const String salesStockDetails = '/salesStockDetails';
  static const String aiCreateService = '/aiCreateService';

  //Notification
  static const String notifications = '/notifications';

  //Profile
  static const String profile = '/profile';
  static const String editProfile = '/editProfile';
  static const String myServices = '/myServices';
  static const String completedRejectedServices = '/completedRejectedService';
  static const String updateUsernameAndProfileImage =
      '/updateUsernameAndProfileImage';
  static const String updateUserPhoneNumber = '/updateUserPhoneNumber';
  static const String updateEmailAddress = '/updateEmailAddress';

  //Wallet
  static const String myWallet = '/myWallet';
  static const String fundWallet = '/fundWallet';
  static const String fundWithCard = '/fundWithCard';
  static const String cardDetails = '/cardDetails';
  static const String fundWithBank = '/fundWithBank';
  static const String bankDetails = '/bankDetails';
  static const String fundingSuccessFailure = '/fundingSuccessFailure';

  //Content
  static const String myContent = '/myContent';
  static const String promoteContent = '/promoteContent';
  static const String contentInfo = '/contentInfo';

  //customer support
  static const String customerSupport = '/customerSupport';

  //content analysis
  static const String contentAnalysis = '/contentAnalysis';

  //Payment Method
  static const String paymentMethod = '/paymentMethod';
  static const String payWithCard = '/payWithCard';
  static const String paymentFailureOrSuccess = '/paymentFailureOrSuccess';

  //send money to bank
  static const String sendMoneyToBank = '/sendMoneyToBank';
  static const String selectBank = '/selectBank';
  static const String amountAndRemark = '/amountAndRemark';
  static const String sendSuccessOrFailure = '/sendSuccessOrFailure';

  //withdraw from bank
  static const String withdrawFromWallet = '/withdrawFromWallet';
  static const String selectBankToWithdraw = '/selectBankToWithdraw';
  static const String amountToWithdraw = '/amountToWithdraw';
  static const String withdrawalSuccessOrFailure =
      '/withdrawalSuccessOrFailure';

  // request money
  static const String requestMoney = '/requestMoney';
  static const String selectRecipient = '/selectRecipient';
  static const String amountRequest = '/amountRequest';

  //manual content creation
  static const String manualContentPromotion = '/manualContentPromotion';
  static const String addDescription = '/addDescription';
  static const String selectAudience = '/selectAudience';
  static const String selectDuration = '/selectDuration';
  static const String selectAdBudget = '/selectAdBudget';
  static const String reviewAd = '/reviewAd';
  static const String payForAd = '/payForAd';
  static const String internalTotalReach = '/internalTotalReach';
  static const String externalTotalReach = '/externalTotalReach';
}
