#include "../include/glad/glad.h"
#include <GLFW/glfw3.h>
#include <cmath>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <math.h>

float points[] = {-0.5f, 0.5f,  0.0f, 0.5f,  0.5f,  0.0f,
                  0.5f,  -0.5f, 0.0f, -0.5f, -0.5f, 0.0f};

// std::string readOneFile(std::string &Path) {
//   std::ifstream SeedFile(Path);
//   std::string Line((std::istreambuf_iterator<char>(SeedFile)),
//                    std::istreambuf_iterator<char>());
//   return Line;
// }

const char *vertex_shader = "#version 410 core\n"
                            "in vec3 vp;"
                            "void main() {"
                            "  gl_Position = vec4( vp, 1.0 );"
                            "}";

const char *fragment_shader = "#version 410 core\n"
                              "out vec4 frag_colour;"
                              "void main() {"
                              "  frag_colour = vec4( 0.5, 0.0, 0.5, 1.0 );"
                              "}";

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

  GLuint vertex_buffer;
  glGenBuffers(1, &vertex_buffer);
  glBindBuffer(GL_ARRAY_BUFFER, vertex_buffer);
  glBufferData(GL_ARRAY_BUFFER, 12 * sizeof(float), points, GL_STATIC_DRAW);

  GLuint vao;
  glGenVertexArrays(1, &vao);
  glBindVertexArray(vao);
  glEnableVertexAttribArray(0);
  glBindBuffer(GL_ARRAY_BUFFER, vertex_buffer);
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, NULL);

  GLuint vs = glCreateShader(GL_VERTEX_SHADER);
  glShaderSource(vs, 1, &vertex_shader, NULL);
  glCompileShader(vs);
  GLuint fs = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource(fs, 1, &fragment_shader, NULL);
  glCompileShader(fs);

  GLuint shader_program = glCreateProgram();
  glAttachShader(shader_program, fs);
  glAttachShader(shader_program, vs);
  glLinkProgram(shader_program);

  while (!glfwWindowShouldClose(window)) {
    glfwPollEvents();

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glUseProgram(shader_program);
    glBindVertexArray(vao);
    glDrawArrays(GL_TRIANGLES, 0, 4);

    // int width, height;
    // glfwGetFramebufferSize(window, &width, &height);
    // const float ratio = width / (float)height;

    // glViewport(0, 0, width, height);

    glfwSwapBuffers(window);
  }
  glfwDestroyWindow(window);
  glfwTerminate();
  exit(EXIT_SUCCESS);
}

GLFWwindow *StartGLFW() {

  if (!glfwInit()) {
    std::cerr << "Failed to initialize GLFW, panic!" << std::endl;
    return nullptr;
  }

  glfwSetErrorCallback(error_callback);

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

  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
    std::cerr << "Failed to initialize GLAD!" << std::endl;
    return nullptr;
  }

  return window;
}
