{
  description = "R project templates using rix";

  outputs = { self, ... }: {
    templates = {
      r-minimal = {
        path = ./r-minimal;
        description = "Minimal R + rix environment";
      };
      default = self.templates.r-minimal;

      r-miaverse = {
        path = ./r-minimal;
        desctription = "Miaverse + rix environment";
      };
    };
  };
}
