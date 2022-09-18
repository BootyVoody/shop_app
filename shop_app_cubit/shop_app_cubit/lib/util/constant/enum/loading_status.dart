enum LoadingStatus {
  loading,
  done,
  error,
  never;

  bool get isLoading => this == LoadingStatus.loading;
  bool get isError => this == LoadingStatus.error;
}
