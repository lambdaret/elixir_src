defmodule Greeter do
  # @db %{
  #   "english" => "Welcome",
  #   "czech" => "Vitejte",
  #   "danish" => "Velkomst",
  #   "dutch" => "Welkom",
  #   "estonian" => "Tere tulemast",
  #   "finnish" => "Tervetuloa",
  #   "flemish" => "Welgekomen",
  #   "french" => "Bienvenue",
  #   "german" => "Willkommen",
  #   "irish" => "Failte",
  #   "italian" => "Benvenuto",
  #   "latvian" => "Gaidits",
  #   "lithuanian" => "Laukiamas",
  #   "polish" => "Witamy",
  #   "spanish" => "Bienvenido",
  #   "swedish" => "Valkommen",
  #   "welsh" => "Croeso"
  # }

  # def greet(language) do
  #   case Map.fetch(@db, language) do
  #     {:ok, val} -> val
  #     _ -> "Welcome"
  #   end
  # end

  # @langs %{
  #   english: "Welcome",
  #   czech: "Vitejte",
  #   danish: "Velkomst",
  #   dutch: "Welkom",
  #   estonian: "Tere tulemast",
  #   finnish: "Tervetuloa",
  #   flemish: "Welgekomen",
  #   french: "Bienvenue",
  #   german: "Willkommen",
  #   irish: "Failte",
  #   italian: "Benvenuto",
  #   latvian: "Gaidits",
  #   lithuanian: "Laukiamas",
  #   polish: "Witamy",
  #   spanish: "Bienvenido",
  #   swedish: "Valkommen",
  #   welsh: "Croeso"
  # }

  # def greet(greeting) do
  #   with nil <- @langs[String.to_atom(greeting)] do "Welcome" end
  # end

  # @languages [
  #   czech: "Vitejte",
  #   danish: "Velkomst",
  #   dutch: "Welkom",
  #   estonian: "Tere tulemast",
  #   finnish: "Tervetuloa",
  #   flemish: "Welgekomen",
  #   french: "Bienvenue",
  #   german: "Willkommen",
  #   irish: "Failte",
  #   italian: "Benvenuto",
  #   latvian: "Gaidits",
  #   lithuanian: "Laukiamas",
  #   polish: "Witamy",
  #   spanish: "Bienvenido",
  #   swedish: "Valkommen",
  #   welsh: "Croeso"
  # ]

  # for {lang, string} <- @languages do
  #   def greet(unquote(to_string(lang))), do: unquote(string)
  # end

  # def greet(_), do: "Welcome"

  def greet(language) do
    langdict = %{"english" => "Welcome",
              "czech" => "Vitejte",
              "danish" => "Velkomst",
              "dutch" => "Welkom",
              "estonian" => "Tere tulemast",
              "finnish" => "Tervetuloa",
              "flemish" => "Welgekomen",
              "french" => "Bienvenue",
              "german" => "Willkommen",
              "irish" => "Failte",
              "italian" => "Benvenuto",
              "latvian" => "Gaidits",
              "lithuanian" => "Laukiamas",
              "polish" => "Witamy",
              "spanish" => "Bienvenido",
              "swedish" => "Valkommen",
              "welsh" => "Croeso"}

    case langdict do
      %{ ^language => _ } -> langdict[language]
      _ -> langdict["english"]
    end
  end
end
