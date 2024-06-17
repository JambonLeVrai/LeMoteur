cmake_minimum_required(VERSION 3.15)
project(VulkanEngine)

find_package(glfw3 REQUIRED)
find_package(vulkan-memory-allocator REQUIRED)
find_package(VulkanHeaders REQUIRED)
find_package(glm REQUIRED)
find_package(Vulkan)

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} glfw vulkan-memory-allocator::vulkan-memory-allocator vulkan-headers::vulkan-headers glm::glm Vulkan::Vulkan)