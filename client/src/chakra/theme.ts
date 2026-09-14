import { extendTheme, type ThemeConfig } from "@chakra-ui/react";
import { mode, type StyleFunctionProps } from "@chakra-ui/theme-tools";

const config: ThemeConfig = {
    initialColorMode: "dark",
    useSystemColorMode: true,
};

// extend the theme
const theme = extendTheme({
    config,
    styles: {
        global: (props: StyleFunctionProps) => ({
            body: {
                backgroundColor: mode("gray.500", "")(props),
            },
        }),
    },
});

export default theme;