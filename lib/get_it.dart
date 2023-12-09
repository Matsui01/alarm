void getItInit() {
  _registerUseCases();
  _registerCubits();
  _registerDatasource();
}

void _registerUseCases() {
  // ServiceLocator.registerFactory<EditProfileUseCase>(
  //   () => EditProfileUseCase(
  //     ServiceLocator.get<EditProfileRepository>(),
  //     ServiceLocator.get<SecureStorageService>(),
  //   ),
  // );
}
void _registerCubits() {
  // ServiceLocator.registerFactory<InitializerCubit>(
  //   () => InitializerCubit(
  //     useCase: ServiceLocator.get<InitializerUseCase>(),
  //   ),
  // );
}
void _registerDatasource() {
  // ServiceLocator.registerFactory<LoginDataSource>(
  //   () => LoginDataSourceImpl(
  //     ServiceLocator.get<SecureStorageService>(),
  //   ),
  // );
}
