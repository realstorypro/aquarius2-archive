<template lang="pug">
    Scene
        Property(name="clearColor" :color="background")
        Camera(type="arcRotate" :radius="1")
        HemisphericLight(:diffuse="hemispheric_light")
        Entity(:position="[0, 0, 5]")
            Animation(property="rotation.x" :duration="15" :end="Math.PI * 2")
            Animation(property="rotation.y" :duration="15" :end="Math.PI * 2")
            Animation(property="rotation.z" :duration="15" :end="Math.PI * 2")
            PointLight(:diffuse="point_light")
            template(v-for="x in squares")
                template(v-for="y in squares")
                    Box(v-for="z in squares" :position="[x, y, z]" :key="`${x},${y},${z}`")
                        Material(:diffuse="pick_color(x,y,z)" :roughness="1")
                        Animation(property="rotation.x" :duration="15" :end="Math.PI * 2")
                        Animation(property="rotation.y" :duration="15" :end="Math.PI * 2")
                        Animation(property="rotation.z" :duration="15" :end="Math.PI * 2")

</template>

<script lang="coffee">
    export default {
        data: ->
            background: '#bbbbbb'
            hemispheric_light: '#fff'
            point_light: '#fff'
            square_color: "#000"
            squares: [0, 2, -2 ]
            first_color: '#9c91ff'
            second_color: '#ffab1d'
            third_color: '#ffe908'
            fourth_color: '#00d8ff'
            fifth_color: '#ff1873'
            sixth_color: '#0fff7a'
        mounted: ->
            ## $('.overlay').css('opacity', 0.1)
        methods:
            pick_squeeze: (x, y, z) ->
                if x is 0 and y is 2
                    0.5
                else if x is 2 and y is 2
                    1.1
                else if x is -2 and y is 2
                    0.5

                else if x is 0 and y is 0
                    1.3
                else if x is 2 and y is 0
                    0.5
                else if x is -2 and y is 0
                    1.3

                else if x is 0 and y is -2
                    0.5
                else if x is 2 and y is -2
                    1.1
                else if x is -2 and y is -2
                    0.9

            pick_color: (x, y, z) ->

                if x is 0 and y is 2
                    @second_color
                else if x is 2 and y is 2
                    @first_color
                else if x is -2 and y is 2
                    @third_color

                else if x is 0 and y is 0
                    @fourth_color
                else if x is 2 and y is 0
                    @fifth_color
                else if x is -2 and y is 0
                    @third_color


                else if x is 0 and y is -2
                    @fifth_color
                else if x is 2 and y is -2
                    @fourth_color
                else if x is -2 and y is -2
                    @sixth_color

    }
</script>

<style lang="scss">
    canvas {
        height: 100vh
    }
</style>
