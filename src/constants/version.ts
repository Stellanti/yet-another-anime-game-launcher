export const CURRENT_YAAGL_VERSION: string =
  (import.meta.env["YAAGL_VERSION"] == ""
    ? null
    : import.meta.env["YAAGL_VERSION"]) ?? "development";
