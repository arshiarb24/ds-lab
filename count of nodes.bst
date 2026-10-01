{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyNbn7KpzIYGl+Cy/eW4ZoX6",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/arshiarb24/ds-lab/blob/main/count%20of%20nodes.bst\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "class newNode:\n",
        "    def __init__(self, data):\n",
        "        self.data = data\n",
        "        self.left = None\n",
        "        self.right = None\n",
        "\n",
        "def getCount(root, low, high):\n",
        "    if root == None:\n",
        "        return 0\n",
        "\n",
        "    if root.data == high and root.data == low:\n",
        "        return 1\n",
        "\n",
        "    if root.data <= high and root.data >= low:\n",
        "        return (1 + getCount(root.left, low, high) +\n",
        "                getCount(root.right, low, high))\n",
        "\n",
        "    elif root.data < low:\n",
        "        return getCount(root.right, low, high)\n",
        "\n",
        "    else:\n",
        "        return getCount(root.left, low, high)\n",
        "\n",
        "if __name__ == '__main__':\n",
        "    root = newNode(10)\n",
        "    root.left = newNode(5)\n",
        "    root.right = newNode(50)\n",
        "    root.left.left = newNode(1)\n",
        "    root.right.left = newNode(40)\n",
        "    root.right.right = newNode(100)\n",
        "\n",
        "    l = 5\n",
        "    h = 45\n",
        "\n",
        "    print(\"Count of nodes between [\", l, \", \", h,\"] is \",getCount(root, l, h))"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "WaNVVeb-W4PJ",
        "outputId": "80a643e1-0285-44c7-8ca0-4664510599cd"
      },
      "execution_count": 12,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Count of nodes between [ 5 ,  45 ] is  3\n"
          ]
        }
      ]
    }
  ]
}