class Validators {
  static bool cpfValidator({required String cpf}) {
    // Removendo caracteres especiais do CPF
    cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

    // Verificando o tamanho do CPF
    if (cpf.length != 11) {
      return false;
    }

    // Verificando CPFs inválidos conhecidos
    if (cpf == '00000000000' ||
        cpf == '11111111111' ||
        cpf == '22222222222' ||
        cpf == '33333333333' ||
        cpf == '44444444444' ||
        cpf == '55555555555' ||
        cpf == '66666666666' ||
        cpf == '77777777777' ||
        cpf == '88888888888' ||
        cpf == '99999999999') {
      return false;
    }

    // Calculando o primeiro dígito verificador
    var soma = 0;
    for (var i = 0; i < 9; i++) {
      soma += int.parse(cpf[i]) * (10 - i);
    }
    var resto = soma % 11;
    var digito1 = resto < 2 ? 0 : 11 - resto;

    // Verificando o primeiro dígito verificador
    if (int.parse(cpf[9]) != digito1) {
      return false;
    }

    // Calculando o segundo dígito verificador
    soma = 0;
    for (var i = 0; i < 10; i++) {
      soma += int.parse(cpf[i]) * (11 - i);
    }
    resto = soma % 11;
    var digito2 = resto < 2 ? 0 : 11 - resto;

    // Verificando o segundo dígito verificador
    if (int.parse(cpf[10]) != digito2) {
      return false;
    }

    return true;
  }


  static bool isDate({required String dateString}) {
    try {
      DateTime.parse(dateString);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool containsUppercaseAndNumberSpecialCaracter(
      {required String input}) {
    bool hasUppercase = false;
    bool hasNumber = false;
    bool hasSpecial = false;

    for (var char in input.runes) {
      var charStr = String.fromCharCode(char);
      if (charStr == charStr.toUpperCase() &&
          charStr != charStr.toLowerCase()) {
        // Verifica se o caractere é uma letra maiúscula.
        hasUppercase = true;
      } else if (RegExp(r'[0-9]').hasMatch(charStr)) {
        // Verifica se o caractere é um número.
        hasNumber = true;
      } else if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(charStr)) {
        // Verifica se o caractere é um caractere especial.
        hasSpecial = true;
      }

      // Se já encontramos uma letra maiúscula, um número e um caractere especial, podemos sair do loop.
      if (hasUppercase && hasNumber && hasSpecial) {
        break;
      }
    }

    // Retorna verdadeiro somente se tivermos encontrado uma letra maiúscula, um número e um caractere especial.
    return hasUppercase && hasNumber && hasSpecial;
  }

  // Função para verificar se a senha possui pelo menos 8 caracteres.
  bool hasMinLength({required String input}) {
    return input.length >= 8;
  }

  // Função para verificar se a senha possui letra maiúscula.
  bool hasUppercase({required String input}) {
    return input.contains(RegExp(r'[A-Z]'));
  }

  // Função para verificar se a senha possui letra minúscula.
  bool hasLowercase({required String input}) {
    return input.contains(RegExp(r'[a-z]'));
  }

  // Função para verificar se a senha possui pelo menos um número.
  bool hasNumber({required String input}) {
    return input.contains(RegExp(r'[0-9]'));
  }

  // Função para verificar se a senha possui pelo menos um caractere especial.
  bool hasSpecialCharacter({required String input}) {
    return input.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }

  // Função que utiliza as funções acima para verificar todos os critérios.
  bool isStrongPassword({required String input}) {
    return hasMinLength(input: input) &&
        hasUppercase(input: input) &&
        hasLowercase(input: input) &&
        hasNumber(input: input) &&
        hasSpecialCharacter(input: input);
  }
}
