defmodule HexletBasics.LanguageModuleFactory do
  defmacro __using__(_opts) do
    quote do
      def language_module_factory do
        %HexletBasics.Language.Module{
          slug: Faker.Internet.slug,
          language: build(:language),
          order: 100
        }
      end
    end
  end
end