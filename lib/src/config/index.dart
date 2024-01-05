class ProxyConfig {
  final String target;
  final bool changeOrigin;
  final String Function(String) rewrite;

  ProxyConfig(
      {required this.target, this.changeOrigin = true, required this.rewrite});

  Map<String, dynamic> toJson() {
    return {
      'target': target,
      'changeOrigin': changeOrigin,
      'rewrite': rewrite,
    };
  }
}

final Map<String, ProxyConfig> proxy = {
  "/dev": ProxyConfig(
    target: "http://127.0.0.1:8001",
    rewrite: (String path) => path.replaceFirst(RegExp(r'^/dev'), ''),
  ),
  "/prod": ProxyConfig(
    target: "https://show.cool-admin.com",
    rewrite: (String path) => path.replaceFirst(RegExp(r'^/prod'), '/api'),
  ),
};
