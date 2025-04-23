#version 330 core
layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;
layout (location = 2) in vec2 texCoord;

uniform float xOffset;
out vec3 ourColor;
out vec4 ourPos;
out vec2 TexCoord;

void main()
{
    gl_Position = vec4(position.x + xOffset, position.y, position.z, 1.0f);
    ourPos = gl_Position;
    ourColor = color;
    TexCoord = texCoord;
}