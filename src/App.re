open Reglfw.Glfw;

type t = {
    windows: ref(list(Window.t))
};

type appInitFunc = (t) => unit;

let appInstance = {
    windows: ref([]),
};

let getWindows = (app: t) => {
    app.windows^
};

let createWindow = (app: t, windowName) => {
    let w = Window.create(windowName);
    Window.render(w)
    app.windows := [w, ...appInstance.windows^];
    w;
};

let start = (initFunc) => {

    let _ = glfwInit();
    let _ = initFunc(appInstance);

    let appLoop = (_t: float) => {
        glViewport(0, 0, 800, 600);
        glClearDepth(1.0);
        glEnable(GL_DEPTH_TEST);
        glDepthFunc(GL_LEQUAL);

        List.iter((w) => Window.render(w), getWindows(appInstance));
        glfwPollEvents();
        Unix.sleepf(1. /. 100.);
        false
    };

    glfwRenderLoop(appLoop);
};