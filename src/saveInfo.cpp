#include <GL/gl.h>
#include <GLFW/glfw3.h>
#include <cmath>
#include <cstdlib>
#include <iostream>
#include <math.h>

static void error_callback(int error, const char *description) {
  fprintf(stderr, "Error: %s\n", description);
}

static void key_callback(GLFWwindow *window, int key, int scancode, int action,
                         int mods) {
  if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
    glfwSetWindowShouldClose(window, GLFW_TRUE);
}

GLFWwindow *StartGLFW();
float screenWidth = 600.0f;
float screenHeight = 800.0f;

int main(void) {
  GLFWwindow *window = StartGLFW();

  float centerX = screenWidth / 2.0f;
  float centerY = screenHeight / 2.0f;
  float radius = 50.0f;
  int res = 100;

  while (!glfwWindowShouldClose(window)) {
    glClear(GL_COLOR_BUFFER_BIT);
    glBegin(GL_TRIANGLE_FAN);
    glVertex2d(centerX, centerY);

    for (int i = 0; i <= res; ++i) {
      float angle = 2.0f * M_PI * (static_cast<float>(i) / res);
      float x = centerX + cos(angle) * radius;
      float y = centerY + sin(angle) * radius;
      glVertex2d(x, y);
    }

    glEnd();

    glfwSwapBuffers(window); // swap buffers
    glfwPollEvents();        // poll events (inputs)
  }
  glfwDestroyWindow(window);
  glfwTerminate();
  exit(EXIT_SUCCESS);
}

GLFWwindow *StartGLFW() {
  glfwSetErrorCallback(error_callback);

  if (!glfwInit()) {
    std::cerr << "Failed to initialize GLFW, panic!" << std::endl;
    return nullptr;
  }

  // Tell GLFW to use OpenGL 3.3
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  // Create the window
  GLFWwindow *window = glfwCreateWindow(800, 600, "gravity_sim", NULL, NULL);
  if (!window) {
    std::cerr << "Failed to create GLFW window!" << std::endl;
    glfwTerminate();
    return nullptr;
  }

  glfwSetKeyCallback(window, key_callback);
  // Make OpenGL context current
  glfwMakeContextCurrent(window);

  return window;
}
