class StringUtils {
  static String getFirstWord({required String input}) {
    String trimmedInput = input.trim();
    int firstSpaceIndex = trimmedInput.indexOf(' ');
    if (firstSpaceIndex == -1) {
      return trimmedInput;
    } else {
      return trimmedInput.substring(0, firstSpaceIndex);
    }
  }

  static String limparCPF(String cpf) {
    RegExp regex = RegExp(r'[^\d]');
    String cpfSemCaracteres = cpf.replaceAll(regex, '');
    return cpfSemCaracteres;
  }

  static String limparCEP(String cep) {
    RegExp regex = RegExp(r'[^\d]');
    String cepSemCaracteres = cep.replaceAll(regex, '');
    return cepSemCaracteres;
  }
}
