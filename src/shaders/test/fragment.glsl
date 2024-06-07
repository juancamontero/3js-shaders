//* how much  precision to floats
// highp: bad performace, may now work on some devices
// lowp: good precision, may create bugs
// mediump: usually used
// precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

varying vec2 vUv;
varying float vElevation;

//* cames from the vertex
// varying float vRandom;

void main() {
    vec4 textureColor = texture2D(uTexture, vUv);
    textureColor.rgb *= abs(vElevation + 0.6);
    // textureColor.rgb *= vElevation * 2.0 + 0.5; 
    // gl_FragColor = vec4(uColor, 1.0);
    gl_FragColor = textureColor;

}