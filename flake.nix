{
  description = "R project templates using rix";

  outputs = { self, ... }: {
    templates = {
      minimal = {
        path = ./r-minimal;
        description = "Minimal R + rix environment";
      };

      miaverse = {
        path = ./r-miaverse;
        desctription = "Miaverse + rix environment";
      };

      default = self.templates.minimal;
    };
  };
}
